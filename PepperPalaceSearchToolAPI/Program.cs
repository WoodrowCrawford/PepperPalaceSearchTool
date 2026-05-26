using Microsoft.EntityFrameworkCore;
using PepperPalaceSearchToolAPI;
using PepperPalaceSearchToolAPI.Services;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
// Learn more about configuring OpenAPI at https://aka.ms/aspnet/openapi
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();
builder.Services.AddControllers();
builder.Services.AddScoped<FoodService>();
builder.Services.AddScoped<SauceService>();
builder.Services.AddScoped<SaucePairingsService>();

var connectionString = builder.Configuration.GetConnectionString("DefaultConnection");
builder.Services.AddDbContext<PepperPalaceContext>(options => options.UseMySql(connectionString, ServerVersion.AutoDetect(connectionString)));

var app = builder.Build();


//set the default route to the sauce controller, so that when the user navigates to the root of the API, they will see the list of sauces.


// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
    app.MapControllers();
}





app.Run();


