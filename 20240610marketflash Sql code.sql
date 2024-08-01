-- Create Clients Table
CREATE TABLE Clients (
    ClientID VARCHAR(20) NOT NULL PRIMARY KEY,
    CompanyName VARCHAR(40) NOT NULL,
    ContactPerson VARCHAR(40) NOT NULL,
    Address VARCHAR(200) NOT NULL,
    Email VARCHAR(40) NOT NULL,
    Phone VARCHAR(20) NOT NULL
);


-- Create Employees Table
CREATE TABLE Employees (
    EmployeeID VARCHAR(20) NOT NULL PRIMARY KEY,
    EmployeeName VARCHAR(40) NOT NULL,
    Address VARCHAR(200) NOT NULL,
    Email VARCHAR(40) NOT NULL,
    Phone VARCHAR(20) NOT NULL,
    SupervisorID VARCHAR(20),
    FOREIGN KEY (SupervisorID) REFERENCES Employees(EmployeeID)
);

-- Create Channels Table
CREATE TABLE Channels (
    ChannelID VARCHAR(20) NOT NULL PRIMARY KEY,
    ChannelName VARCHAR(40) NOT NULL
);

-- Create Locations Table
CREATE TABLE Locations (
    LocationsID VARCHAR(20) NOT NULL PRIMARY KEY,
    LocationsName VARCHAR(40) NOT NULL
);

-- Create AudienceGroups Table
CREATE TABLE AudienceGroups (
    AudienceGroupID VARCHAR(20) NOT NULL PRIMARY KEY,
    AudienceGroup VARCHAR(40) NOT NULL
);


-- Create Campaigns Table
CREATE TABLE Campaigns (
    CampaignID VARCHAR(20) NOT NULL PRIMARY KEY,
    CampaignName VARCHAR(40) NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE,
    LocationID VARCHAR(40) NOT NULL,
    ChannelID VARCHAR(20) NOT NULL,
    ClientID VARCHAR(20) NOT NULL,
    AudienceGroupID VARCHAR(20) NOT NULL,
    Likes NUMERIC NOT NULL,
    Clicks NUMERIC NOT NULL,
    Conversions NUMERIC NOT NULL,
    Expense NUMERIC NOT NULL,
    ExecutiveID VARCHAR(20),
    FOREIGN KEY (LocationID) REFERENCES Locations(LocationsID),
    FOREIGN KEY (ChannelID) REFERENCES Channels(ChannelID),
    FOREIGN KEY (ClientID) REFERENCES Clients(ClientID),
    FOREIGN KEY (AudienceGroupID) REFERENCES AudienceGroups(AudienceGroupID),
    FOREIGN KEY (ExecutiveID) REFERENCES Employees(EmployeeID)
);