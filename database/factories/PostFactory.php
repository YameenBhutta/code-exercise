<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Post>
 */
class PostFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
    
        $imageFileName = $this->faker->image(public_path('images'), 400, 300, null, false);
        return [
            'user_id' => 1,
            'image' => 'images/' . $imageFileName,
            'title' => fake()->sentence(),
            'body' => fake()->paragraph(40),
        ];
    }
}
