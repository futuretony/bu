% EK125 Homework 3, T. Huang, S. Lee

% Cell array of cities
cityData={'Timbuktu|ml','Boston|us','Beijing|cn','Cape Town|za',...
'McMurdo Station|aq','Rome|it','Nairobi|ke','Kuwait City|kw',...
'Rio de Janeiro|br'};

% Endpoint URL and API Key
endpoint = 'https://api.openweathermap.org/data/2.5/forecast';
appid = '70e9f383955e7372c06948520cd38387';

% Preallocate cell array to store weather data
cities = cell(1,length(cityData));

% Loop to store weather data in cell array
for i = 1:length(cityData)
    q = strrep(cityData{i},'|',',');
    city = strtok(cityData{i},'|');
    fprintf('Retrieving data for %s...\n',city)
    cities{i} = webread(endpoint,'q',q,'appid',appid);
end

% Function to plot line graph of individual city temp data
% hourtempplot(cities)

% Function to scatter plot each city's avg max temp
% avgmaxtempplot(cities)
