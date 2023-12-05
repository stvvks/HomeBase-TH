# Use the official Ruby image, Best Practices you do not want to use 'latest', you want to pin your image tags
FROM ruby:2.3.4

# Set the working directory in the container
WORKDIR /app

# Copy Gemfile and Gemfile.lock to the container
COPY Gemfile Gemfile.lock /app/

# Install dependencies and bundler
RUN gem install bundler && bundle install

# Use non-root user to run the application
USER nonroot

# Copy the application code to the container( for layering reasons we copy this after the gemfiles
COPY . /app

# Expose port 8080
EXPOSE 8080

# Command to run the application
CMD ["ruby", "app.rb"]

